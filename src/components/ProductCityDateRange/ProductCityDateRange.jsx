import Header from "../../components/Header/Header";
import Footer from "../../components/Footer/Footer";

import { useEffect, useState } from "react"
import { Link } from "react-router-dom";
import Button from 'react-bootstrap/Button';
import { MdLocationOn } from "react-icons/md";

import { CardGroup } from "react-bootstrap";
import { BiArrowBack } from "react-icons/bi";
import Card from 'react-bootstrap/Card';
import Moment from 'moment';
import { useParams } from "react-router-dom";
import "./ProductCityDateRange.scss";
const apiUrl = import.meta.env.VITE_RENT_RIDE_API_URL;

export default function ProductCityDateRange() {
  const { pickupdate, dropoffdate, idCity } = useParams();
  const [products, setProducts] = useState([]);
  let requestConfigurationGet = {
    headers: {
      "Content-Type": "application/json",
      Authorization: localStorage.getItem("token"),
    },
  };
  
  useEffect(() => {
    fetch(`${apiUrl}/products?cityId=${idCity}&pickupDate=${pickupdate}&dropoffDate=${dropoffdate}`, requestConfigurationGet)
      .then((response) => response.json())
      .then((productsJSON) => setProducts(productsJSON));
  }, []);

  let cityName = '';
  products.map((product) => cityName = product.city.name)

  return (
    <>
      <Header />
      <div className="city-title">
        <h1> Carros Disponíveis no período de {Moment(pickupdate).format('DD/MM/YYYY')} à {Moment(dropoffdate).format('DD/MM/YYYY')} em {cityName}</h1>
        <div className="left">
          <Link to={"/"}>
            <BiArrowBack size={40} color="#FBC02D" className="arrowback" />
          </Link>
        </div>
      </div>
      <div className="use-bootstrap">
        <CardGroup style={{ 'justifyContent': 'center' }}>
          {products.map((product, index) => (
            <div className="products-res" key={index}>
              <Card key={index} className="m-3" style={{ 'borderRadius': '5px', 'border': 'solid 1px #D3D3D3' }} id="product-card-bootstrap">
                <Card.Img variant="top" src={product.images[0].url} style={{ 'height': '145px', 'borderRadius': '5px 5px 0px 0px' }} />
                <Card.Body id="card-product-body">
                  <Card.Title id="card-product-body-title">{product.name}</Card.Title>
                  <Card.Text id="card-product-body-text">{product.description}</Card.Text>
                  <Link to={`/products/${product.id}`}>
                    <Button variant="primary" id="card-product-button"> Ver mais detalhes</Button>
                  </Link>
                </Card.Body>
              </Card>
            </div>
          ))}
        </CardGroup>
        <div className="u-footer"></div>
      </div>
      <Footer />
    </>
  )
}
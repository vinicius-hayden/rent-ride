import "./ProductsDetails.scss";
import 'react-calendar/dist/Calendar.css';
import 'react-image-gallery/styles/scss/image-gallery.scss'
import Header from "../../components/Header/Header";
import Footer from "../../components/Footer/Footer";

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { library } from '@fortawesome/fontawesome-svg-core'
import { fas } from '@fortawesome/free-solid-svg-icons'

import Calendar from 'react-calendar';

import ImageGallery from 'react-image-gallery';

import { Link } from "react-router-dom";
import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { BiArrowBack } from "react-icons/bi";
import { MdLocationOn } from "react-icons/md";
import { MdSecurity } from "react-icons/md";
const apiUrl = import.meta.env.VITE_RENT_RIDE_API_URL;

export default function ProductsDetails() {
  const { idProduct } = useParams();
  const [product, setProduct] = useState({ name: "", description: "", category: { name: '' }, city: { name: '' }, features: [], images: [{url : ""}] });
  const [value, onChange] = useState(new Date());
  let requestConfigurationGet = {
    headers: {
      "Content-Type": "application/json",
      Authorization: localStorage.getItem("token"),
    },
  };
  
  window.onbeforeunload = function () {
    window.scrollTo(0, 0);
  }
  
  const images = [
    {
      original: `${product.images[0].url}`,
      thumbnail: `${product.images[0].url}`,
      originalHeight: 415,
      originalWidth: 215
    },
  ];

  library.add(fas);

  useEffect(() => {
    fetch(`${apiUrl}/products/${idProduct}`, requestConfigurationGet)
      .then((response) => response.json())
      .then((productsJSON) => setProduct(productsJSON));
  }, []);

  return (
    <>
      <Header />
      <div className="header-products">
        <div className="header-products-left">
          <p>{product.category.description} - {product.category.name}</p>
          <h1 style={{'fontFamily': 'Poppins'}}>{product.name}</h1>
        </div>
        <div className="header-products-right">
          <Link to={"/"}>
            <BiArrowBack size="40" color="#FBC02D" />
          </Link>
        </div>
      </div>
      <div className="header-products-location">
        <h3>
          <MdLocationOn size="20" color="#263238" /> {product.city.name}
        </h3>
        <div className="header-products-location-right">
          <h3>Rating - {product.category.rating} <FontAwesomeIcon icon={['fas', 'star']} /> </h3>
        </div>
      </div>
      <div className="images">
        <ImageGallery items={images}/>
      </div>
      <div className="description">
        <h3>Descrição</h3>
        <p>{product.description}</p>
      </div>
      <div className="features">
        <h3>Características</h3>
        {product.features.map((feature, index) => {
          return (
            <div className="feature-information">
              <FontAwesomeIcon icon={['fas', `${feature.icon}`]} key={index}></FontAwesomeIcon>
              <p>{feature.name}</p>
            </div>)
        })}
      </div>

      <div className="calendar-availability-block">
        <Calendar onChange={onChange} value={value} />
      </div>

      <div className="rent-button-block">
        <Link to={`/products/${product.id}/rental`}>
          {/* <button type="button" className="rent-button-block-button" value="Reservar">Iniciar Reserva</button> */}
          <input
            type="button"
            value="Reservar"
            className="button-rent"
          />
        </Link>
      </div>

      <div className="product-agreement">
        <MdSecurity style={{ 'font-size': '25px' }} />
        <div className="unit-agreement">
          <h1 className="title">Normas</h1>
          <p className="description-agreement">
            O aluguel dos carros é feito diretamente pela EmpresCar LTDA.
          </p>
        </div>
        <div className="unit-agreement">
          <h1 className="title">Segurança</h1>
          <p className="description-agreement">
            Para sua segurança, apenas disponibilizaremos os serviços prestados para aqueles com credencias e CNH válidos até a data de assinatura de serviço. 
          </p>
        </div>
        <div className="unit-agreement">
          <h1 className="title">Cancelamento</h1>
          <p className="description-agreement">
            A EmpresCar possui uma política de cancelamento restrita aqueles que assinam o serviço dentro do prazo de 5 dias úteis anterior à data do Pick-Up. Favor Consultar nossa equipe para quaisquer dúvidas mediantes pagamentos e/ou questões financeiras.
          </p>
        </div>
      </div>
      <Footer />
    </>
  );
}
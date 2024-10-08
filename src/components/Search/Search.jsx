import React, { useState, useEffect } from "react";
import "./Search.scss";
import moment from "moment";
import { useNavigate } from "react-router-dom";
const apiUrl = import.meta.env.VITE_RENT_RIDE_API_URL;

export default function Search() {
  const [city, setCity] = useState(['', '']);
  const url = `${apiUrl}/products`
  const today     = moment().format('YYYY-MM-DD');
  const tomorrow  = moment().add(1,'days').format('YYYY-MM-DD')
  const navigate = useNavigate(); 
  // const yesterday = moment().add(-1, 'days');
  
  let config = {
    headers: {
      "Content-Type": "application/json",
      Authorization: localStorage.getItem("token"),
    },    
  };

  useEffect(() => {
    fetch(`${apiUrl}/cities`, config)
      .then((response) => response.json())
      .then((citiesJSON) => setCity(citiesJSON));
  }, []);

  function submitForm(event) {
    event.preventDefault();
    const { city, dateRange } = event.target.elements;
  }

  function findProducts() {
    let element = document.querySelector('.input-city');
    let pickUpDate = document.getElementById("pickUpDate").value;
    let dropOffDate = document.getElementById("dropOffDate").value;
    
    var selectedOption = element.value
    var idFromSelectedCity = null;
    city.forEach((city) => {
      if (city.name ===  selectedOption) { 
        idFromSelectedCity = city.id;
      }
    })

    if (idFromSelectedCity > 0) {
      if (pickUpDate != '' && dropOffDate != '') {
        navigate(`/cities/${idFromSelectedCity}/products/dateRange/${pickUpDate}/${dropOffDate}`);
        return;
      }
      navigate(`/cities/${idFromSelectedCity}/products`);
    } else {
      if (pickUpDate == '' && dropOffDate == '') {
        window.alert('Por favor, inserir pelo menos cidade.')
        return;
      }
      navigate(`/products/dateRange/${pickUpDate}/${dropOffDate}`);
    }
  }

  return (
    <>
        <div className="form-search">
          <form
            onSubmit={(event) => submitForm(event)}
            className="input-search"
          >
            <h1>Search for car rental deals</h1>

            <select className="input-city" defaultValue={'DEFAULT'}>
              <option value="DEFAULT" disabled>
                Where do you want to rent it?
              </option>
              
              {city.map((city, index) => (  
                <option value={city.name} key={index}>{city.name}</option>
              ))}
            </select>

            <input
              type="date"
              className="input-date"
              placeholder="Data de retirada"
              id="pickUpDate"
              // value={today}
              onChange={console.log(today)}
            />

            <input
              type="date"
              className="input-date"
              placeholder="Data de devolução"
              id="dropOffDate"
              // value={tomorrow}
            />

            <input className="button-search" type="submit" value="Buscar" onClick={findProducts}/>
          </form>
        </div>
    </>
  );
}

# README

## My_TV - Sistema de lista de programações
Sistema que registra e lista as programações ordenadas pela data/hora de transmissão!

* Ruby version: ruby '2.7.0'

* Rails version: rails '6.1.3'

* Gem language: rails-i18n

* Server: Puma (http://localhost:3000/)

## Instructions:

* Para uma melhor usabilidade é recomendavel utilizar o Front-end da aplicação!
-URL: 
[https://github.com/LuanVilela20/Front_end_My_TV.git]

* Caso queira fazer requisições GET sem o Front-end:
- http://localhost:3000/attractions lista todos ou adicionar /id para uma busca unica;
- http://localhost:3000/kinds lista todos ou adicionar /id para uma busca unica;
- http://localhost:3000/media lista todos ou adicionar /id para uma busca unica;
- http://localhost:3000/channels lista todos ou adicionar /id para uma busca unica;

* Caso queira fazer requisições POST sem o Front-end, segue o modelo do JSON:
    Obs: Os campos kind_id, medium_id e channel_id são obrigatorios! 

- Attractions
{ 
    attraction_name: "teste",
    channel_id: "1",
    description: "teste",
    kind_id: "4",
    medium_id: "1",
    transmission_date: "2021-03-06T09:44"
};

- Kinds
{
   description: "teste" 
};

- Media
{
   description: "teste" 
};

- Channels
{
   description: "teste" 
};


 



function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    jsonplaceholder: 'https://jsonplaceholder.typicode.com',
    spotifygql: 'https://spotify-graphql-server.herokuapp.com/graphql',
    soapcalc: 'http://www.dneonline.com/calculator.asmx'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}
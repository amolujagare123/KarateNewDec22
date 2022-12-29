function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'e2e';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    _url : 'http://localhost/chat',
    username : 'admin',
    password : 'admin123'

  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
        config._url = 'http://localhost/chat/lhc_web/index.php/site_admin';
        config.username = 'admin';
        config.password = 'admin123';

  } else if (env == 'e2e') {
    // customize
    config._url = 'http://chat.cookingwithamol.in/index.php/site_admin/';
            config.username = 'admin';
            config.password = 'admin123';
  }
  return config;
}
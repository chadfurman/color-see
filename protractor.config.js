exports.config = {
  seleniumAddress: 'http://localhost:4444/wd/hub',
  capabilities: {
    // You can use other browsers
    // like firefox, phantoms, safari, IE (-_-)
    'browserName': 'chrome'
  },
  specs: ['e2e/color-see-spec.coffee'],
  jasmineNodeOpts: {
    showColors: true,
    defaultTimeoutInterval: 30000,
    isVerbose: true,
  },
  allScriptsTimeout: 20000,
  onPrepare: function(){
    browser.driver.get('http://localhost:3000');
  }
};

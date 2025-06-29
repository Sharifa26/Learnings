//URL - Uniform Resource Locator or universal resource locator
import { URL } from 'url';

const url = new URL('https://www.google.com:8080/search?q=node.js#hash');
//retturns the host of the url
console.log(url.hostname);
//returns the hash of the url
console.log(url.hash);
//returns the port of the url
console.log(url.port);
//returns the path of the url
console.log(url.href);
//returns the protocol of the url
console.log(url.protocol);
//returns the search of the url
console.log(url.search);
//returns the searchParams of the url
console.log(url.searchParams);

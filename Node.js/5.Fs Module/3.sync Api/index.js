import * as fs from 'fs';

//if the folder already exists, it will not create a new folder
//it will create a new folder with sync the old folder
fs.mkdirSync('d:\\sample\\1.book\\text',{recursive:true});

//removing a folder
fs.rmdirSync('d:\\sample\\1.book\\text');
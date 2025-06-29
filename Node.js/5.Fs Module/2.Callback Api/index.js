import * as fs from 'fs';

//creating a folder using callback arrow function
fs.mkdir('d:\\sample', (error)=>{
    if(error) throw error;
    console.log('folder created');
})

//creating a folder using callback function
fs.mkdir('d:\\ss',function(error){
    if(error) throw error;
    console.log('folder created');
})
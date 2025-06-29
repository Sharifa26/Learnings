import fs from 'fs/promises'

// creating a folder
try{
    // await fs.mkdir('d:\\Node.js\\newfolder',{recursive:true});
    // console.log('folder created');
    
}catch(error){
    console.log(error);
}

//reading a folder /Directory
try {
    // const files = await fs.readdir('d:\\Node.js\\newfolder');
    // for (const file of files) {
    //     console.log(file);
    // }
} catch (error) {
    console.log(error);
    
}

//removing a folder /Directory
try {
    // await fs.rmdir('d:\\Node.js\\sample');
    // console.log('folder removed');
} catch (error) {
    console.log(error);
}

//Create and write a file
try {
    // await fs.writeFile('Readme.md','this is a Node.js Toturial');
    // console.log('file created');
} catch (error) {
    console.log(error);
    
}

//read a file
try {
    // const data = await fs.readFile('README.md','utf-8');
    // console.log(data);
    // //appending a file
    // await fs.appendFile('README.md','\n hi this is a new line \n\n this is sharifa');
} catch (error) {
    console.log(error);
    
}

//copy a file
try {
   //await fs.copyFile('README.md','hello.txt') 
} catch (error) {
    console.log(error);
    
}

// GET infromation about a file
try {
    const data = await fs.stat('README.md');
    //console.log(data);
    console.log(data.isDirectory());
    console.log(data.isFile());
    
} catch (error) {
    console.log(error);
}
import path from 'path';

//.basename(path) gives the file name without extension
console.log(path.basename('d:\\Learnings\\Node.js\\4.Path Module\\index.js'));

//.basename(path[, ext]) gives the file name with extension
console.log(path.basename('d:\\node.js\\index.js', '.js'));

//.dirname(path) gives the directory name
console.log(path.dirname('d:\\node.js\\index.js'));

//.extname(path) gives the file extension
console.log(path.extname('d:\\node.js\\index.js'));

//.join(path1, path2, ...) joins the paths
console.log(path.join('d:\\node.js','4.Path Module','index.js'));

//.join(path1, path2, ... ,'..') joins the paths with '..' to go up a directory
console.log(path.join('d:\\node.js','4.Path Module','index.js','..'));

//.normalize(path) normalizes the path
console.log(path.normalize('d:\\node.js\\4.Path Module\\index.js'));

//.parse(path) parses the path in (root, dir, base, ext, name) format
console.log(path.parse('d:\\node.js\\4.Path Module\\index.js')); 
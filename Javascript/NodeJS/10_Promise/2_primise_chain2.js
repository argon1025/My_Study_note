const wait = new Promise((resolve, reject)=>{
    const duration = 1000 + Math.random() * 4000;    
    setTimeout(()=> {
      resolve(duration);
    }, duration);
  });
  
  wait.then(()=>{
    console.log('first');
  })
  .then(()=>{
    console.log('second');
    throw new Error('on second');
  })
  .then(()=>{
    console.log('third');
  })
  .then(()=>{
    console.log('fourth');
  })
  .catch((err)=>{
    console.log(err)
  })
  .then(()=>{
    console.log('fifth');
  })
  .then(()=>{
    console.log('sixth');
  });
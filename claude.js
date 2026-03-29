export default async function handler(req,res){

if(req.method !== "POST"){

return res.status(405).json({error:"method"});

}

try{

const r = await fetch(
"https://api.anthropic.com/v1/messages",
{
method:"POST",

headers:{
"x-api-key":process.env.ANTHROPIC_API_KEY,
"anthropic-version":"2023-06-01",
"content-type":"application/json"
},

body:JSON.stringify({

model:"claude-3-5-sonnet-20241022",

max_tokens:2000,

messages:[
{
role:"user",
content:req.body.prompt
}
]

})

});

const data = await r.json();

res.status(200).json({

text:
data.content?.[0]?.text ||
"erro"

});

}catch(e){

res.status(500).json({
error:e.message
});

}

}

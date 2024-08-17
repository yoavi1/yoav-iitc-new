// import { create } from 'json-server';
import './style.css';
import axios from 'axios';

// async function createPost(newPost) {
//   try {
//     const response = await fetch('http://localhost:3001/posts', {
//       method: 'POST', // Use POST to create a new resource
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: JSON.stringify(newPost), // Send the new post data
//     });

//     if (!response.ok) {
//       throw new Error('Network response was not ok');
//     }

//     const data = await response.json();
//     console.log('Post created:', data);
//   } catch (error) {
//     console.error('There was a problem with the fetch operation:', error);
//   }
// }

// Example usage
// createPost({ title: 'New Post' });
const postUrl = 'http://localhost:3001/posts';

async function getPosts() {
  const dataPost = await axios.get(postUrl);
  console.log(dataPost.data);
}
getPosts();

async function addPost(post) {
  const response = await axios.post(postUrl, post, {
    headers: {
      'Content-Type': 'application/json',
    },
  });
  console.log(response.data);
}
addPost({ title: 'First Post', content: 'yoav1.' });

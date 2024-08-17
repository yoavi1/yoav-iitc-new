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

// // Example usage
// createPost({ title: 'New Post' });

import axios from 'axios';

import axios from 'axios';

// Function to add a new post
async function addPost(newPost) {
  try {
    const response = await axios.post('http://localhost:3001/posts', newPost, {
      headers: {
        'Content-Type': 'application/json',
      },
    });
    console.log('Post added:', response.data);
  } catch (error) {
    console.error('Error adding post:', error);
  }
}

// Example usage
addPost({ title: 'New Post', content: 'This is a new post.' });

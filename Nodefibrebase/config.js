// Import the functions you need from the SDKs you need
import {getFirestore } from 'firebase/firestore/lite'
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyAiIEP2K6C49ar1HBLnhJs5zrsMpdEv7aw",
  authDomain: "onewhocreates-9aecf.firebaseapp.com",
  projectId: "onewhocreates-9aecf",
  storageBucket: "onewhocreates-9aecf.appspot.com",
  messagingSenderId: "850732354096",
  appId: "1:850732354096:web:68b45848db41438cba3bf5",
  measurementId: "G-6NQ6VKWHW2"
};

// Initialize Firebase
const app1 = initializeApp(firebaseConfig);

 export default app1
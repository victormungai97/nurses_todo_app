// web/keys.js

// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.14.0/firebase-app.js";
import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.14.0/firebase-analytics.js";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
    apiKey: "AIzaSyBJ4m3sHW0R5F2PHbns9NVRliBBMT0kDFA",
    authDomain: "nurses-todo-app.firebaseapp.com",
    projectId: "nurses-todo-app",
    storageBucket: "nurses-todo-app.appspot.com",
    messagingSenderId: "812773951106",
    appId: "1:812773951106:web:56b6b4227f30181e1f969b",
    measurementId: "G-1XNZRX5HRL"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

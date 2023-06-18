import {
    getAuth,
    signInWithEmailAndPassword
} from "https://www.gstatic.com/firebasejs/9.22.2/firebase-auth.js";
import { getDatabase } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-database.js";
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-app.js";

// 1- Initialize Firebase with your SDK configuration
const firebaseConfig = {
    apiKey: "AIzaSyCa_YqhkBzPPcFjQxTm5sBsfhZ4q6JqACM",
    authDomain: "bibliothequeaudio-c8455.firebaseapp.com",
    projectId: "bibliothequeaudio-c8455",
    appId: "1:942099918648:web:61c10a75ea3c7b3ea71bcd",
    storageBucket: "bibliothequeaudio-c8455.appspot.com",
    messagingSenderId: "942099918648",
    databaseURL: "https://bibliothequeaudio-c8455-default-rtdb.firebaseio.com/",
};

// Import the functions you need from the SDKs you need
const app = initializeApp(firebaseConfig);
const auth = getAuth();
const database = getDatabase(app);
const submitData = document.getElementById('submitData');
const errorMessage = document.getElementById('errorMessage');
submitData.addEventListener('submit', (e) => {
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    // Log in user
    signInWithEmailAndPassword(auth, email, password)
        .then(() => {
            // Redirect to home page
            window.location.replace("livres.html");
        })
        .catch((error) => {
            const errorCode = error.code;
            const errorMessageText = error.message;
            let errorMessage = document.getElementById('error-message');
            errorMessage.style.color = 'red';
        });
});

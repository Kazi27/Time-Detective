using UnityEngine;
using UnityEngine.UI;
using TMPro;

namespace Keyboard
{
    public class TimeTravelDev : MonoBehaviour
    {
        public KeyboardManager keyboardManager;

        public string Location = "";
        public string Year = "";
        public AudioSource errorClip;
        public GameObject objectToAppear;

        // Assuming outputField is a Text or InputField component in your scene
        public TMP_InputField outputField;

        // Assuming enterButton is a Button component in your scene
        public Button enterButton;

        private void Awake()
        {
            enterButton.onClick.AddListener(OnEnterPress);
        }

        void Start()
        {
            errorClip = GetComponent<AudioSource>();
        }

        public void OnEnterPress()
        {
            string inputString = outputField.text;
            SeparateLettersAndNumbers(inputString, out string letters, out string numbers);

            Debug.Log("Letters and Spaces: " + letters);
            Debug.Log("Numbers: " + numbers);

            checkStrings(letters, numbers);
        }

        void SeparateLettersAndNumbers(string inputString, out string letters, out string numbers)
        {
            letters = "";
            numbers = "";

            foreach (char c in inputString)
            {
                if (char.IsLetter(c))
                {
                    letters += char.ToLower(c);
                }
                else if (char.IsDigit(c))
                {
                    numbers += c;
                }
            }
        }

        void checkStrings(string userLoc, string userDate)
        {
            if (userLoc == Location && userDate == Year)
            {
                doSomething();
            }
            else
            {
                errorClip.Play(); // Use lowercase Play
            }
        }

        void doSomething()
        {
            if (objectToAppear != null)
            {
                objectToAppear.SetActive(true);
            }
        }
    }
}

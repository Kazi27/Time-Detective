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

        //The keyboard contains an output field and will need to be placed here.
        public TMP_InputField outputField;
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
                errorClip.Play();
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

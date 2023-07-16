<div class="container-a">
    <h1>About Us</h1>
    <p>Welcome to Eighty Twenty! Our small business aims to provide you with the best selection of high-quality protein products to support your fitness and nutrition goals. Our team of experts carefully curates the products to ensure you get the most out of your workout and recovery.</p>
    <p>At our store, you'll find a wide range of protein supplements, including powders, bars, and ready-to-drink shakes. We work with trusted brands in the industry to ensure that our customers receive only the best products.</p>
    <p>Whether you're a professional athlete, a fitness enthusiast, or just someone looking to lead a healthier lifestyle, we have the right products for you. Our goal is to help you reach your fitness goals and enhance your overall well-being through proper nutrition and supplementation.</p>
    <p>Thank you for choosing our protein nutrition shopping site. We value your trust and strive to provide you with an excellent shopping experience. If you have any questions or need assistance, please don't hesitate to contact our customer support team.</p>
  </div>

  <div class="container">
    <h1>Frequently Asked Questions</h1>
    <div class="faq">
      <h3 class="faq-item">1. How do I place an order?</h3>
      <p>Placing an order on our site is quick and easy. Simply browse our selection of products, add the items you want to your cart, and proceed to checkout. Provide your shipping and payment information, review your order, and confirm the purchase.</p>

      <h3 class="faq-item">2. What payment methods do you accept?</h3>
      <p>We accept major credit cards, such as Visa, Mastercard, and American Express. You can also choose to pay using popular online payment platforms like PayPal.</p>

      <h3 class="faq-item">3. How long does shipping take?</h3>
      <p>Shipping times vary depending on your location and the shipping method you choose at checkout. We offer standard and express shipping options. Standard shipping usually takes 3-5 business days, while express shipping delivers within 1-2 business days.</p>

      <h3 class="faq-item">4. Do you offer international shipping?</h3>
      <p>Yes, we offer international shipping to select countries. During the checkout process, you can enter your shipping address to see if we deliver to your location. Please note that international shipping may be subject to additional customs fees and import duties.</p>

      <h3 class="faq-item">5. What is your return policy?</h3>
      <p>We have a hassle-free return policy. If you're not satisfied with your purchase, you can return the items within 30 days for a full refund or exchange. Please refer to our Returns & Refunds page for more information on the return process.</p>

      <h3 class="faq-item">6. How can I contact customer support?</h3>
      <p>Our customer support team is available to assist you with any questions or concerns. You can reach us through our contact form below or by sending an email to support@eightytwenty.com. We strive to respond to all inquiries within 24 hours.</p>

      <h3 class="faq-item">7. Are your products tested for quality and safety?</h3>
      <p>Yes, we prioritize the quality and safety of our products. We work with reputable manufacturers who adhere to strict quality control standards. Our products undergo testing to ensure they meet industry regulations and are safe for consumption.</p>

      <h3 class="faq-item">8. Can I track my order?</h3>
      <p>Once your order has been shipped, you will receive a confirmation email with a tracking number. You can use this tracking number to monitor the progress of your shipment and get estimated delivery dates.</p>

      <h3 class="faq-item">9. Do you offer discounts or promotions?</h3>
      <p>Yes, we frequently offer discounts and promotions on our products. You can sign up for our newsletter to stay updated on the latest deals and special offers. Additionally, we may have exclusive promotions for our loyal customers.</p>

      <h3 class="faq-item">10. Is my personal information secure?</h3>
      <p>We take the security and privacy of your personal information seriously. We implement industry-standard security measures to protect your data from unauthorized access or misuse. You can learn more about our data protection practices by reviewing our Privacy Policy.</p>
    </div>
  </div>

  <div class="container-cf">
    <h1>Contact Us</h1>
    <form id="contact-form">
      <div>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
      </div>
      <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div>
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="5" required></textarea>
      </div>
      <div>
        <input type="submit" value="Send Message">
      </div>
    </form>
  </div>

  <script>
    // JavaScript code for FAQ functionality
    window.addEventListener('DOMContentLoaded', function() {
      var faqItems = document.getElementsByClassName('faq-item');

      for (var i = 0; i < faqItems.length; i++) {
        faqItems[i].addEventListener('click', function() {
          this.classList.toggle('active');
          var answer = this.nextElementSibling;
          if (answer.style.maxHeight) {
            answer.style.maxHeight = null;
          } else {
            answer.style.maxHeight = answer.scrollHeight + 'px';
          }
        });
      }
      
      });
  </script>
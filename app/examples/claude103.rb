class Claude103
  def self.examples

    # Sentiment analysis, Example 1
    ai_agent = AiAgent::Claude.new
    review = "The product quality is excellent and the customer service was very helpful!"
    response = ai_agent.analyze_sentiment(review)
    ai_agent.format_response(response)

    # Sentiment analysis, Example 2
    ai_agent = AiAgent::Claude.new
    abstract = "This paper presents a new algorithm for deep learning, achieving state-of-the-art results in image recognition tasks. The proposed method outperforms existing techniques in both accuracy and computational efficiency."
    response = ai_agent.analyze_sentiment(abstract, strict: false)
    ai_agent.format_response(response)

    # Sentiment analysis, Example 3
    posts = [
      "I love the new update!",
      "The latest feature is very disappointing.",
      "I'm indifferent about the changes."
    ]

    ai_agent = AiAgent::Claude.new
    results = posts.map do |post|
      response = ai_agent.analyze_sentiment(post)
      { post: post, sentiment: ai_agent.format_response(response).strip }
    end
    pp results

    # ------------------------------------------------------------------------------------------

    # Recognize entities
    ai_agent = AiAgent::Claude.new
    abstract = "Apple Inc. announced its latest iPhone in Cupertino, California."
    response = ai_agent.recognize_entities(abstract, strict: false)
    ai_agent.format_response(response)

    # Recognize entities (strict)
    ai_agent = AiAgent::Claude.new
    abstract = "Apple Inc. announced its latest iPhone in Cupertino, California."
    response = ai_agent.recognize_entities(abstract, strict: true)
    y ai_agent.format_response(response)

    # ------------------------------------------------------------------------------------------

    # Summarise text
    ai_agent = AiAgent::Claude.new
    abstract = "This paper introduces a groundbreaking algorithm designed to enhance deep learning capabilities, particularly in the realm of image recognition. The innovative approach leverages advanced neural network architectures and novel training techniques to achieve unprecedented levels of accuracy. By integrating these cutting-edge methods, the algorithm significantly improves the performance of image recognition systems, enabling more precise and reliable identification of objects within various datasets. This advancement not only sets a new benchmark for the field but also opens up new possibilities for applications in areas such as medical imaging, autonomous vehicles, and security systems. Furthermore, the proposed method demonstrates remarkable computational efficiency, surpassing current state-of-the-art techniques. Through optimized processing algorithms and effective utilization of computational resources, the new algorithm achieves faster training times and reduced energy consumption. This efficiency is particularly beneficial for large-scale applications where processing power and speed are critical. The results of extensive testing and validation show that this method consistently outperforms existing solutions, making it a promising tool for researchers and practitioners seeking to push the boundaries of what is possible in deep learning and image recognition."
    response = ai_agent.summarize_text(abstract, strict: false)
    ai_agent.format_response(response)

    # Summarise text (strict)
    ai_agent = AiAgent::Claude.new
    abstract = "This paper introduces a groundbreaking algorithm designed to enhance deep learning capabilities, particularly in the realm of image recognition. The innovative approach leverages advanced neural network architectures and novel training techniques to achieve unprecedented levels of accuracy. By integrating these cutting-edge methods, the algorithm significantly improves the performance of image recognition systems, enabling more precise and reliable identification of objects within various datasets. This advancement not only sets a new benchmark for the field but also opens up new possibilities for applications in areas such as medical imaging, autonomous vehicles, and security systems. Furthermore, the proposed method demonstrates remarkable computational efficiency, surpassing current state-of-the-art techniques. Through optimized processing algorithms and effective utilization of computational resources, the new algorithm achieves faster training times and reduced energy consumption. This efficiency is particularly beneficial for large-scale applications where processing power and speed are critical. The results of extensive testing and validation show that this method consistently outperforms existing solutions, making it a promising tool for researchers and practitioners seeking to push the boundaries of what is possible in deep learning and image recognition."
    response = ai_agent.summarize_text(abstract, strict: true)
    ai_agent.format_response(response)

  end
end

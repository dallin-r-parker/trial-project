import React from "react";

export default props => {
  console.log("this is askquestion props", props);
  return (
    <div className="ask-question-container">
      <h2 className="ask-question-header">Question</h2>
      <form className="ask-question-form" onSubmit={props.onSubmit}>
        <>
          <p>{props.clue.question}</p>
          <label htmlFor="question">Question: What is...</label>
          <input
            type="text"
            name="answer"
            value={props.answer}
            onChange={props.onChange}
            placeholder="Jeopardy"
          />
          <button type="submit" onClick={props.onSubmit}>
            Submit
          </button>
        </>
      </form>
    </div>
  );
};

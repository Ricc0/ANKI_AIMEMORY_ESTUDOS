// Reusable Cebraspe-style certo/errado quiz wiring.
// Markup contract per .quiz block:
//   <div class="quiz" data-key="certo|errado">   <!-- data-key = right answer -->
//     <div class="q-num">Item 1</div>
//     <p class="statement">...</p>
//     <div class="options">
//       <button class="opt" data-answer="certo">Certo</button>
//       <button class="opt" data-answer="errado">Errado</button>
//     </div>
//     <div class="feedback" data-for="certo">...explains picking "certo"...</div>
//     <div class="feedback" data-for="errado">...explains picking "errado"...</div>
//   </div>
//
// On click we show the feedback written FOR the chosen option (data-for ===
// chosen) and colour it by correctness (green if chosen === data-key, else
// red). The green/red is applied dynamically, so authors don't have to keep
// a static .correct/.incorrect class in sync with which answer is right —
// that mismatch was a recurring bug. Legacy blocks that still carry a static
// .feedback.correct / .feedback.incorrect (without data-for) fall back to the
// old behaviour.
document.querySelectorAll('.quiz').forEach(function (quiz) {
  const key = quiz.dataset.key;
  let answered = false;
  quiz.querySelectorAll('button.opt').forEach(function (btn) {
    btn.addEventListener('click', function () {
      if (answered) return;
      answered = true;
      const chosen = btn.dataset.answer;
      const isRight = chosen === key;
      btn.classList.add(isRight ? 'chosen-correct' : 'chosen-incorrect');

      // Prefer the feedback authored for the chosen option.
      let fb = quiz.querySelector('.feedback[data-for="' + chosen + '"]');
      // Fallback for legacy blocks with no data-for.
      if (!fb) {
        fb = quiz.querySelector(isRight ? '.feedback.correct' : '.feedback.incorrect');
      }
      if (fb) {
        fb.classList.remove('correct', 'incorrect');
        fb.classList.add(isRight ? 'correct' : 'incorrect');
        fb.classList.add('show');
      }
    });
  });
});

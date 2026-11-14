// Calculadora de matriz de confusão (componente reutilizável).
// Contrato de marcação:
//   <div class="calc-metricas" data-vp="40" data-fp="60" data-fn="10" data-vn="890"></div>
// O script monta os campos VP/FP/FN/VN e recalcula acurácia, precisão,
// recall e F1 a cada alteração. Os valores data-* são o cenário inicial.
document.querySelectorAll('.calc-metricas').forEach(function (box) {
  const campos = [
    ['vp', 'TP/VP · True Positive · fraude apontada como fraude'],
    ['fn', 'FN · False Negative · fraude que passou'],
    ['fp', 'FP · False Positive · alarme falso'],
    ['vn', 'TN/VN · True Negative · normal tida como normal']
  ];
  const grid = document.createElement('div');
  grid.className = 'calc-grid';
  const inputs = {};
  campos.forEach(function (c) {
    const label = document.createElement('label');
    label.innerHTML = '<span>' + c[1] + '</span>';
    const input = document.createElement('input');
    input.type = 'number';
    input.min = '0';
    input.value = box.dataset[c[0]] || '0';
    input.addEventListener('input', recalc);
    label.appendChild(input);
    grid.appendChild(label);
    inputs[c[0]] = input;
  });
  const out = document.createElement('div');
  out.className = 'calc-out';
  box.appendChild(grid);
  box.appendChild(out);

  function pct(x) { return isFinite(x) ? (x * 100).toFixed(1).replace('.', ',') + '%' : '—'; }
  function recalc() {
    const v = {};
    Object.keys(inputs).forEach(function (k) { v[k] = Math.max(0, Number(inputs[k].value) || 0); });
    const total = v.vp + v.fp + v.fn + v.vn;
    const acc = (v.vp + v.vn) / total;
    const prec = v.vp / (v.vp + v.fp);
    const rec = v.vp / (v.vp + v.fn);
    const f1 = 2 * prec * rec / (prec + rec);
    const linhas = [
      ['Accuracy · Acurácia', '(VP+VN) / total', acc],
      ['Precision · Precisão', 'VP / (VP+FP)', prec],
      ['Recall · Revocação', 'VP / (VP+FN)', rec],
      ['F1-score · Medida F1', '2·P·R / (P+R)', f1]
    ];
    out.innerHTML = linhas.map(function (l) {
      return '<div class="calc-metric"><span class="calc-name">' + l[0] +
        '</span><span class="calc-val">' + pct(l[2]) +
        '</span><span class="calc-formula">' + l[1] + '</span></div>';
    }).join('');
  }
  recalc();
});

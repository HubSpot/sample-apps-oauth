document.getElementById('copyBtn').onclick = async () => {
  let text = document.getElementById('redirectURL').textContent;
  await navigator.clipboard.writeText(text);

  alert('Copied');
};

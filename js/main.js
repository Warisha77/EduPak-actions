document.getElementById('actionBtn').addEventListener('click', function() {
    const statusBlock = document.getElementById('statusMessage');
    const statusText = document.getElementById('statusText');
    const actionBtn = document.getElementById('actionBtn');

    // Smooth feedback updates
    actionBtn.textContent = "Connecting...";
    actionBtn.style.opacity = "0.7";
    actionBtn.style.pointerEvents = "none";

    setTimeout(() => {
        statusText.textContent = "Pipeline Verified • Environment Live";
        statusBlock.classList.remove('hidden');
        actionBtn.textContent = "Console Active";
    }, 800);
});
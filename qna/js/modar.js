
const modal = document.querySelector('dialog');
const btn = document.querySelector('button');
const btnClose = document.querySelectorAll('.close');

btn.addEventListener('click', () => openModal());
btnClose.forEach((elm) => elm.addEventListener('click', () => closeModal()));
modal.addEventListener('click', (e) => detectBackdropClick(e));

openModal = () => {
	modal.showModal();
}

closeModal = () => {
	modal.classList.add("dialog__animate-out");
	modal.addEventListener('animationend', handleClose, false);
}

handleClose = () => {
	modal.classList.remove("dialog__animate-out");
	modal.removeEventListener('animationend', handleClose, false);
	modal.close();
}

detectBackdropClick = (event) => {
	if(event.target === modal) {
		closeModal();
	}
}
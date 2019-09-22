// tslint:disable: indent

export const sleep = (t: number) =>
	new Promise(resolve => {
		setTimeout(resolve, t);
	});

import util from "./index";

export default function (router: any, url: string, resolve: any) {
  router.all(url, (req, res, next): any => {
    resolve({ req, res, next, data: { ...util.dataTemplate() } });
  });
}

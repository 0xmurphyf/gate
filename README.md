# Sui NFT Gate

单文件 Sui NFT 门禁页面：连接钱包、验证签名，并检查地址直持或其 Sui Kiosk 内是否持有指定 NFT。

## 配置

编辑 `index.html` 顶部的 `window.NFT_GATE_CONFIG`：

```js
window.NFT_GATE_CONFIG = {
  SITE_NAME: 'THE INNER CIRCLE',
  NETWORK: 'mainnet',
  NFT_TYPE: '0xe649354aa848a8ae43d52a2bf75301b3d67dd6654c8df525650c5afe86518dc5::voxx_book_pass::Nft',
  RPC_URL: '',
  REDIRECT_URL: ''
};
```

至少需要把 `NFT_TYPE` 换成完整的 Sui Move Type。

## 部署

这是静态页面，可直接部署到 GitHub Pages、Vercel、Netlify 或 Cloudflare Pages。

### Railway

仓库已包含 `Dockerfile`、`nginx.conf` 和 `railway.toml`。在 Railway 中选择
**New Project → Deploy from GitHub repo → 0xmurphyf/gate** 即可；构建和健康检查
会自动读取仓库配置。

> 前端门禁无法保护真正敏感的内容。涉及付费内容、下载或私有 API 时，请在后端再次验签和验链。

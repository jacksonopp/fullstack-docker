<script>
  import { env } from "$env/dynamic/public";

    const proxyUrl = env.PUBLIC_API_URL
    let result = ''
    const ping = async () => {
        const url = `${env.PUBLIC_API_URL}/ping`
        const res = await fetch(url)
        result = await res.text()
    }
</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>
<button on:click={ping}>ping</button>
<p>{result}</p>
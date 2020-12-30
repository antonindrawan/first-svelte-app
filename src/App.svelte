
<script>
    import Header from "./Header.svelte"
    import Footer from "./Footer.svelte"
    import DataTable, {Head, Body, Row, Cell} from "@smui/data-table";

    export let name;
</script>

<svelte:head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</svelte:head>

<main>
    <Header/>

    <h1>Hello {name}!</h1>
    <p>Visit the <a href="https://svelte.dev/tutorial">Svelte tutorial</a> to learn how to build Svelte apps.</p>

    <DataTable table$aria-label="Products">
        <Head>
            <Row>
            <Cell>Name</Cell>
            <Cell>Description</Cell>
            <Cell>Quantity</Cell>
            </Row>
        </Head>
        <Body>
            <Row>
            <Cell>Reds</Cell>
            <Cell>The red ones</Cell>
            <Cell numeric>45</Cell>
            </Row>
            <Row>
            <Cell>Blues</Cell>
            <Cell>The blue ones</Cell>
            <Cell numeric>37</Cell>
            </Row>
            <Row>
            <Cell>Yellows</Cell>
            <Cell>The yellow ones</Cell>
            <Cell numeric>32</Cell>
            </Row>
        </Body>
    </DataTable>

    <Footer/>
</main>

<style>
    main {
        text-align: center;
        padding: 1em;
        max-width: 240px;
        margin: 0 auto;
    }

    h1 {
        color: #ff3e00;
        text-transform: uppercase;
        font-size: 4em;
        font-weight: 100;
    }

    @media (min-width: 640px) {
        main {
            max-width: none;
        }
    }
</style>
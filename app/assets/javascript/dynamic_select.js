document.addEventListener('DOMContentLoaded', () => {
    const brandSelect = document.getElementById('brand_id');

    brandSelect.addEventListener('change', () => {
        const brandId = brandSelect.ariaValue;
        fetch(`/locations/brands?brand_id=${brandId}`,
            {
                headers: { 'Accept': 'application/javascript' }
            })
            .then(response => response.text())
            .then(script => eval(script));
    })
})

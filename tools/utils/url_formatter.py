def get_base_url(site, env):
    lower_site = site.lower()
    if lower_site == "www":
        return {
            "dev01": "https://wwwdev01.conestogac.on.ca/",
            "dev02": "https://wwwdev02.conestogac.on.ca/",
            "test01": "https://wwwtest01.conestogac.on.ca/",
            "test02": "https://wwwtest02.conestogac.on.ca/",
            "prod": "https://www.conestogac.on.ca/",
        }[env.lower()]
    elif lower_site == "ortn":
        return {
            "dev": "https://orientationdev.conestogac.on.ca/",
            "prod": "https://orientation.conestogac.on.ca/",
        }[env.lower()]
    elif lower_site == "ar":
        return {"prod": "https://artest.conestogac.on.ca/"}[env.lower()]
    elif lower_site == "ce":
        return {
            "dev": "https://continuing-educationdev.conestogac.on.ca/",
            "test": "https://continuing-educationtest.conestogac.on.ca/",
            "prod": "https://continuing-education.conestogac.on.ca/"}[
            env.lower()
        ]

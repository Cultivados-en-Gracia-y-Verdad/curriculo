class Token:
    def __init__(self, greek, morph=None):
        self.greek = greek
        self.morph = morph

        # alignment fields
        self.spanish = None
        self.alignment_type = None

    def __repr__(self):
        return f"{self.greek} → {self.spanish} [{self.alignment_type}]"


class Verse:
    def __init__(self, ref):
        self.ref = ref
        self.tokens = []

    def add(self, token):
        self.tokens.append(token)

    def __repr__(self):
        return f"{self.ref}: {len(self.tokens)} tokens"
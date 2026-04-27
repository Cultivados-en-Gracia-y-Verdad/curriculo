class Token:
    def __init__(self, greek, morph):
        self.greek = greek
        self.morph = morph

    def __repr__(self):
        return f"{self.greek} {self.morph}"


class Verse:
    def __init__(self, ref):
        self.ref = ref
        self.tokens = []

    def add(self, token):
        self.tokens.append(token)

    def __repr__(self):
        return f"{self.ref}: {len(self.tokens)} tokens"
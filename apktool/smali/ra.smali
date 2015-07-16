.class public final Lra;
.super Lqs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lra$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqs",
        "<",
        "Lra$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lqs$a;)V
    .locals 1
    .param p1    # Lqs$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lqs;-><init>(Lqs$a;)V

    .line 19
    const-class v0, Lra$a;

    invoke-virtual {p0, v0, p0}, Lra;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/cash/generate_signature_for_phone"

    return-object v0
.end method

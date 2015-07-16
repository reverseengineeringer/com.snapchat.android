.class public final Lrb;
.super Lqs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqs",
        "<",
        "Lrb$a;",
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
    .line 18
    invoke-direct {p0, p1}, Lqs;-><init>(Lqs$a;)V

    .line 20
    const-class v0, Lrb$a;

    invoke-virtual {p0, v0, p0}, Lrb;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "/cash/generate_access_token"

    return-object v0
.end method

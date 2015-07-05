.class public final Lql;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqc",
        "<",
        "Lql$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lqc$a;)V
    .locals 1
    .param p1    # Lqc$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lqc;-><init>(Lqc$a;)V

    .line 20
    const-class v0, Lql$a;

    invoke-virtual {p0, v0, p0}, Lql;->a(Ljava/lang/Class;Lts$b;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "/cash/generate_access_token"

    return-object v0
.end method

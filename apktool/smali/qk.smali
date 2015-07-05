.class public final Lqk;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqc",
        "<",
        "Lqk$a;",
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
    .line 17
    invoke-direct {p0, p1}, Lqc;-><init>(Lqc$a;)V

    .line 19
    const-class v0, Lqk$a;

    invoke-virtual {p0, v0, p0}, Lqk;->a(Ljava/lang/Class;Lts$b;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/cash/generate_signature_for_phone"

    return-object v0
.end method

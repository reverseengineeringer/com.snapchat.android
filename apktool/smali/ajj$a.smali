.class public final Lajj$a;
.super Laim$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laim$a",
        "<",
        "Lajj$a;",
        ">;"
    }
.end annotation


# instance fields
.field mSnapbryoAnalytics:Lnq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Laim$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b()Laim;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lajj$a;->c()Lajj;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lajj;
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Laim$a;->a()V

    .line 75
    iget-object v0, p0, Lajj$a;->mSnapbryoAnalytics:Lnq;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lnq;

    invoke-direct {v0}, Lnq;-><init>()V

    iput-object v0, p0, Lajj$a;->mSnapbryoAnalytics:Lnq;

    .line 78
    :cond_0
    new-instance v0, Lajj;

    invoke-direct {v0, p0}, Lajj;-><init>(Lajj$a;)V

    return-object v0
.end method

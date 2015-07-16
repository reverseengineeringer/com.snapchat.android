.class public final Lakf$a;
.super Laji$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laji$a",
        "<",
        "Lakf$a;",
        ">;"
    }
.end annotation


# instance fields
.field mSnapbryoAnalytics:Loh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Laji$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b()Laji;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lakf$a;->c()Lakf;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lakf;
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Laji$a;->a()V

    .line 75
    iget-object v0, p0, Lakf$a;->mSnapbryoAnalytics:Loh;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Loh;

    invoke-direct {v0}, Loh;-><init>()V

    iput-object v0, p0, Lakf$a;->mSnapbryoAnalytics:Loh;

    .line 78
    :cond_0
    new-instance v0, Lakf;

    invoke-direct {v0, p0}, Lakf;-><init>(Lakf$a;)V

    return-object v0
.end method

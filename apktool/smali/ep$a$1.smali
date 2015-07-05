.class final enum Lep$a$1;
.super Lep$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, p1, v0, v0}, Lep$a;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Ler$a;Ljava/lang/String;Lep;)Z
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p3, p1}, Lep;->c(Ler$a;)Z

    move-result v0

    return v0
.end method

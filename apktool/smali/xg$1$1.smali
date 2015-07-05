.class final Lxg$1$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Laue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lxg$1;


# direct methods
.method constructor <init>(Lxg$1;)V
    .locals 3

    .prologue
    .line 38
    iput-object p1, p0, Lxg$1$1;->a:Lxg$1;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v0, Laue;

    const/16 v1, 0x320

    const/16 v2, 0x1c2

    invoke-direct {v0, v1, v2}, Laue;-><init>(II)V

    invoke-virtual {p0, v0}, Lxg$1$1;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Laue;

    const/16 v1, 0x160

    const/16 v2, 0x120

    invoke-direct {v0, v1, v2}, Laue;-><init>(II)V

    invoke-virtual {p0, v0}, Lxg$1$1;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

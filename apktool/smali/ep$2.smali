.class public final Lep$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Len;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lep$a;

.field final synthetic d:J

.field final synthetic e:Lep;


# direct methods
.method public constructor <init>(Lep;Ljava/lang/CharSequence;Ljava/lang/String;Lep$a;)V
    .locals 2

    .prologue
    .line 2835
    iput-object p1, p0, Lep$2;->e:Lep;

    iput-object p2, p0, Lep$2;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Lep$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lep$2;->c:Lep$a;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lep$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Len;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2838
    new-instance v1, Leo;

    iget-object v2, p0, Lep$2;->e:Lep;

    iget-object v3, p0, Lep$2;->a:Ljava/lang/CharSequence;

    iget-object v4, p0, Lep$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lep$2;->c:Lep$a;

    iget-wide v6, p0, Lep$2;->d:J

    invoke-direct/range {v1 .. v7}, Leo;-><init>(Lep;Ljava/lang/CharSequence;Ljava/lang/String;Lep$a;J)V

    return-object v1
.end method

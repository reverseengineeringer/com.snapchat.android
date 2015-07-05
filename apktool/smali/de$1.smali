.class final Lde$1;
.super Lcq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde;->a(I)Ldx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde;


# direct methods
.method constructor <init>(Lde;II)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lde$1;->a:Lde;

    invoke-direct {p0, p2, p3}, Lcq;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lde$1;->a:Lde;

    invoke-virtual {v0, p1}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

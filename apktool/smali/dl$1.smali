.class final Ldl$1;
.super Lcv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldl;->a(I)Leg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcv",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldl;


# direct methods
.method constructor <init>(Ldl;II)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Ldl$1;->a:Ldl;

    invoke-direct {p0, p2, p3}, Lcv;-><init>(II)V

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
    iget-object v0, p0, Ldl$1;->a:Ldl;

    invoke-virtual {v0, p1}, Ldl;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

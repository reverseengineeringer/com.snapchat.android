.class final Ladj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladj;


# direct methods
.method constructor <init>(Ladj;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Ladj$4;->a:Ladj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Ladj$4;->a:Ladj;

    invoke-static {v0}, Ladj;->a(Ladj;)V

    .line 637
    iget-object v0, p0, Ladj$4;->a:Ladj;

    invoke-static {v0}, Ladj;->b(Ladj;)V

    .line 638
    return-void
.end method

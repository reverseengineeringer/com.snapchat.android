.class final Ladj$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladj;->a([Ladj$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ladj$a;

.field final synthetic b:Ladj;


# direct methods
.method constructor <init>(Ladj;[Ladj$a;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Ladj$10;->b:Ladj;

    iput-object p2, p0, Ladj$10;->a:[Ladj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Ladj$10;->b:Ladj;

    iget-object v1, p0, Ladj$10;->a:[Ladj$a;

    invoke-virtual {v0, v1}, Ladj;->b([Ladj$a;)V

    .line 454
    return-void
.end method

.class final Ladj$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladj;->a([Ladj$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ladj$b;

.field final synthetic b:Ladj;


# direct methods
.method constructor <init>(Ladj;[Ladj$b;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Ladj$11;->b:Ladj;

    iput-object p2, p0, Ladj$11;->a:[Ladj$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Ladj$11;->b:Ladj;

    iget-object v1, p0, Ladj$11;->a:[Ladj$b;

    invoke-virtual {v0, v1}, Ladj;->b([Ladj$b;)V

    .line 519
    return-void
.end method

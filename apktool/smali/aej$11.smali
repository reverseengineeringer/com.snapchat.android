.class final Laej$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laej;->a([Laej$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Laej$a;

.field final synthetic b:Laej;


# direct methods
.method constructor <init>(Laej;[Laej$a;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Laej$11;->b:Laej;

    iput-object p2, p0, Laej$11;->a:[Laej$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Laej$11;->b:Laej;

    iget-object v1, p0, Laej$11;->a:[Laej$a;

    invoke-virtual {v0, v1}, Laej;->b([Laej$a;)V

    .line 485
    return-void
.end method

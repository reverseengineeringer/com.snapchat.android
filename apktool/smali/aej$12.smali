.class final Laej$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laej;->a([Laej$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Laej$b;

.field final synthetic b:Laej;


# direct methods
.method constructor <init>(Laej;[Laej$b;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Laej$12;->b:Laej;

    iput-object p2, p0, Laej$12;->a:[Laej$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Laej$12;->b:Laej;

    iget-object v1, p0, Laej$12;->a:[Laej$b;

    invoke-virtual {v0, v1}, Laej;->b([Laej$b;)V

    .line 550
    return-void
.end method

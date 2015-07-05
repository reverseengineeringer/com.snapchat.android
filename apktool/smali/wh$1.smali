.class final Lwh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwh;->a(Lwc$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwc$b;

.field final synthetic b:I

.field final synthetic c:Lwh;


# direct methods
.method constructor <init>(Lwh;Lwc$b;I)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lwh$1;->c:Lwh;

    iput-object p2, p0, Lwh$1;->a:Lwc$b;

    iput p3, p0, Lwh$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lwh$1;->c:Lwh;

    iget-object v0, v0, Lwh;->a:Lwg;

    iget-object v1, p0, Lwh$1;->a:Lwc$b;

    iget v2, p0, Lwh$1;->b:I

    invoke-interface {v0, v1, v2}, Lwg;->a(Lwc$b;I)V

    .line 35
    return-void
.end method

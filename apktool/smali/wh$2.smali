.class final Lwh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwh;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lwh;


# direct methods
.method constructor <init>(Lwh;I)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lwh$2;->b:Lwh;

    iput p2, p0, Lwh$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lwh$2;->b:Lwh;

    iget-object v0, v0, Lwh;->a:Lwg;

    iget v1, p0, Lwh$2;->a:I

    invoke-interface {v0, v1}, Lwg;->b(I)V

    .line 55
    return-void
.end method

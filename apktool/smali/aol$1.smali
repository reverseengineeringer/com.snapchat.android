.class final Laol$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laom$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laol;->a(Laka;ZLcom/snapchat/android/rendering/SnapMediaRenderer$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laol;


# direct methods
.method constructor <init>(Laol;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Laol$1;->a:Laol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laon;)V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Laon;->a()Laka;

    move-result-object v2

    aput-object v2, v0, v1

    .line 165
    iget-object v0, p0, Laol$1;->a:Laol;

    invoke-static {v0, p1}, Laol;->a(Laol;Laon;)V

    .line 166
    return-void
.end method

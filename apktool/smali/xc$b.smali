.class final Lxc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 63
    :pswitch_0
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

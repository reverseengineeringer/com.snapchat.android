.class public final Lapo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapo$1;
    }
.end annotation


# instance fields
.field public final a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;ZZZ)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lapo;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 22
    iput-boolean p2, p0, Lapo;->b:Z

    .line 23
    iput-boolean p3, p0, Lapo;->c:Z

    .line 24
    iput-boolean p4, p0, Lapo;->d:Z

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v2, "caption"

    iget-object v0, p0, Lapo;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    sget-object v3, Lapo$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "free_move_mode"

    iget-boolean v0, p0, Lapo;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v2, "color_mode"

    iget-boolean v0, p0, Lapo;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v2, "scale_edited"

    iget-boolean v0, p0, Lapo;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v1

    .line 46
    :pswitch_0
    const-string v0, "DEFAULT"

    goto :goto_0

    :pswitch_1
    const-string v0, "BIG_TEXT"

    goto :goto_0

    :pswitch_2
    const-string v0, "BIG_TEXT_CENTER"

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "false"

    goto :goto_1

    .line 48
    :cond_1
    const-string v0, "false"

    goto :goto_2

    .line 49
    :cond_2
    const-string v0, "false"

    goto :goto_3

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

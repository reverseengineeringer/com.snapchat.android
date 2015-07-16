.class public final Larf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/snapchat/android/ui/layertype/LayerType;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/snapchat/android/ui/layertype/LayerType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->HARDWARE:Lcom/snapchat/android/ui/layertype/LayerType;

    sput-object v0, Larf;->a:Lcom/snapchat/android/ui/layertype/LayerType;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/snapchat/android/ui/layertype/LayerType;->values()[Lcom/snapchat/android/ui/layertype/LayerType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    sput-object v0, Larf;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/ui/layertype/LayerType;->NONE:Lcom/snapchat/android/ui/layertype/LayerType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Larf;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/ui/layertype/LayerType;->HARDWARE:Lcom/snapchat/android/ui/layertype/LayerType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Larf;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/ui/layertype/LayerType;->SOFTWARE:Lcom/snapchat/android/ui/layertype/LayerType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static a(I)Lcom/snapchat/android/ui/layertype/LayerType;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Larf;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/layertype/LayerType;

    .line 35
    if-nez v0, :cond_0

    .line 36
    sget-object v0, Larf;->a:Lcom/snapchat/android/ui/layertype/LayerType;

    .line 38
    :cond_0
    return-object v0
.end method

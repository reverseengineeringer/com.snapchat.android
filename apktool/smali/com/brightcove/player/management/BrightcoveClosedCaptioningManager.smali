.class public Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "ClosedCaptioningStyle"

.field public static final PREF_BACKGROUND_COLOR:Ljava/lang/String; = "BackgroundColor"

.field public static final PREF_EDGE_ATTRIBUTE:Ljava/lang/String; = "EdgeAttribute"

.field public static final PREF_EDGE_COLOR:Ljava/lang/String; = "EdgeColor"

.field public static final PREF_HIGHLIGHT_COLOR:Ljava/lang/String; = "HighlightColor"

.field public static final PREF_TEXT_COLOR:Ljava/lang/String; = "TextColor"

.field public static final PREF_TEXT_SIZE:Ljava/lang/String; = "TextSize"

.field public static final PREF_TYPEFACE:Ljava/lang/String; = "Typeface"

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->sInstance:Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->loadStyle()V

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->sInstance:Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    invoke-direct {v0, p0}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->sInstance:Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->sInstance:Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;

    return-object v0
.end method


# virtual methods
.method public getStyle()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    return-object v0
.end method

.method protected loadStyle()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    const-string v0, "Loading CaptionsStyle from %s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ClosedCaptioningStyle"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->context:Landroid/content/Context;

    const-string v1, "ClosedCaptioningStyle"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->newBuilder(Landroid/content/Context;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v1

    .line 82
    const-string v2, "BackgroundColor"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setBackgroundColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 83
    const-string v2, "HighlightColor"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setHighlightColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 84
    const-string v2, "Typeface"

    sget-object v3, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTypeface(Landroid/graphics/Typeface;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 85
    const-string v2, "TextColor"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTextColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 86
    const-string v2, "TextSize"

    const/high16 v3, 0x41600000    # 14.0f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTextSize(F)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 87
    invoke-static {}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->values()[Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    move-result-object v2

    const-string v3, "EdgeAttribute"

    sget-object v4, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->DEFAULT_EDGE_ATTRIBUTE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-virtual {v4}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->ordinal()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setEdgeAttribute(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 88
    const-string v2, "EdgeColor"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setEdgeColor(I)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 90
    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->create()Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    .line 92
    const-string v0, "CaptionsStyle is %s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected persistStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    const-string v0, "Writing CaptionsStyle to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ClosedCaptioningStyle"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->context:Landroid/content/Context;

    const-string v1, "ClosedCaptioningStyle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    const-string v1, "BackgroundColor"

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget v2, v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->backgroundColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v1, "HighlightColor"

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget v2, v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->highlightColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string v1, "Typeface"

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget-object v2, v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string v1, "TextColor"

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget v2, v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v1, "TextSize"

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget v2, v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textSize:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v1, "EdgeAttribute"

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget-object v2, v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-virtual {v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v1, "EdgeColor"

    iget-object v2, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    iget v2, v2, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method public setStyle(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->style:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;

    .line 70
    invoke-virtual {p0}, Lcom/brightcove/player/management/BrightcoveClosedCaptioningManager;->persistStyle()V

    .line 71
    return-void
.end method
